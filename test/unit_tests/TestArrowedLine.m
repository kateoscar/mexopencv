classdef TestArrowedLine
    %TestArrowedLine
    properties (Constant)
    end

    methods (Static)
        function test_1
            im = 255*ones(128,128,3,'uint8');
            a = cv.arrowedLine(im, [64,64], [20,10]);
        end

        function test_error_1
            try
                cv.arrowedLine();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end

end
