divisores:: Int -> [Int]
divisores n = divisoresDesde n 1

divisoresDesde:: Int -> Int -> [Int]
divisoresDesde n m | n == m = [n]
                   | n > m && (n `mod` m == 0) = m:(divisoresDesde n (m+1))
                   | n > m && (n `mod` m /= 0) = divisoresDesde n (m+1)