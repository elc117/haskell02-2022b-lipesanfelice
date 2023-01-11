import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String
svgCircle x y r style =
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll =
  svgBegin 600 600
    ++ (svgCircle 60 60 50 "rgb(10, 145, 32, 0.4)")
    ++ (svgCircle 160 160 50 "rgb(127, 255, 212, 0.4)")
    ++ (svgCircle 260 260 50 "rgb(227, 38, 54, 0.4)")
    ++ (svgCircle 160 360 50 "rgb(255, 255, 0, 0.4)")
    ++ (svgCircle 60 460 50 "rgb(153, 102, 204, 0.4)")
    ++ (svgCircle 360 160 50 "rgb(222, 49, 99, 0.4)")
    ++ (svgCircle 460 60 50 "rgb(124, 252, 0, 0.4)")
    ++ (svgCircle 360 360 50 "rgb(227, 38, 54, 0.4)")
    ++ (svgCircle 460 460 50 "rgb(255, 117, 24, 0.4)")
    ++ svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll