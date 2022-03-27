% Square class
% Author: Jesper Glas
% Desc: A square class

classdef SquarePrimitive
    properties
        center {mustBeNumeric}
        width {mustBeNumeric}
        rotation {mustBeNumeric}
    end
    methods
        function or = outerRadius(obj)
            or = sqrt( ((obj.width / 2)^2)*2 );
        end

        function ir = innerRadius(obj)
            ir = obj.width / 2;
        end
        
        function h = plot(obj, options)

            if ~exist('options', 'var')
                options = '-b';
            end

            radius = outerRadius(obj);
            
            X = @(r, a) obj.center(1) + cos(deg2rad(a)) * r;
            Y = @(r, a) obj.center(2) + sin(deg2rad(a)) * r;
            
            A = @(a) a + 45;
            
            angles = [
                A(obj.rotation)
                A(obj.rotation)+90
                A(obj.rotation)+180 
                A(obj.rotation)+270 
                A(obj.rotation)
                ];
            
            x = X(radius, angles);
            y = Y(radius, angles);
            
            hold on
            h = plot(x, y, options);
            hold off
        end

        function h = plotBlockingEdge(obj, ls, options)

            if ~exist('options', 'var')
                options = '--r';
            end

            lsAngle = angle(obj.center, ls)
        end

        function h = plotInnerBounds(obj)
            h = plotCircle(obj.center, obj.innerRadius, ':c');
        end

        function h = plotOuterBounds(obj)
            h = plotCircle(obj.center, obj.outerRadius, '--c');
        end

        function p = getPoint(obj, angle)
        
                p(1) = obj.center(1) + obj.width / 2;
                p(2) = obj.center(2) + innerRadius(obj) * tan(deg2rad(angle));
        end
    end
end