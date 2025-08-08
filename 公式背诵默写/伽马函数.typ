#import "math-formula-template.typ": 数学公式背诵模板

#数学公式背诵模板(
    title: "伽马函数（Gamma Function）速记与例题",
)[
    #heading[一、定义与基本性质]

    == 标准定义（欧拉第二类积分）

    伽马函数将阶乘从正整数“延拓”到非整数乃至复数域：

    $Gamma(x) = integral_0^(∞) t^(x-1) e^(-t) thin d t$, 其收敛域为 $Re(x) > 0$。

    == 与阶乘的关系

    - 递推：$Gamma(x+1) = x Gamma(x)$
    - 整数：对正整数 $n$，有 $Gamma(n+1) = n!$，如 $Gamma(4) = 3! = 6$
    - 特值：$Gamma(1/2) = sqrt(pi)$

    == 常用等价形式与性质（备考常用）

    - 与 Beta 函数：$B(x, y) = integral_0^1 t^(x-1) (1-t)^(y-1) thin d t = (Gamma(x) Gamma(y))/(Gamma(x+y))$
    - 指数积分模板：$integral_0^(∞) x^(p-1) e^(-a x) thin d x = Gamma(p) / a^p$（$a>0, Re(p)>0$）
    - 反射公式（了解）：$Gamma(x) Gamma(1-x) = pi / sin(pi x)$（避免在奇点处使用）

    #heading[二、历史小结]

    从“如何把阶乘扩展到非整数”的问题出发，伽马函数在 18–19 世纪逐步定型：

    - 1720s：伯努利与哥德巴赫讨论“延拓阶乘”的问题。
    - 1729–1730：欧拉给出解法，先以无穷乘积形式，再给出积分形式（即上式定义），称其为“第二类欧拉积分”。
    - 1808 前后：勒让德引入记号 $Gamma(x)$ 并命名为“伽马函数”，从此标准化。
    - 19 世纪：高斯、魏尔斯特拉斯等拓展其在复分析与数论中的性质与应用。

    #heading[三、常见记忆要点]

    - 看到 $integral_0^(∞) x^m e^(-a x^k) thin d x$ 型，常以代换“凑”成 $Gamma$ 形式。
    - $Gamma(1/2) = sqrt(pi)$ 与递推 $Gamma(z+1) = z\,Gamma(z)$ 常联用。
    - 与 Beta 函数互化：区间 $[0,1]$ 的幂函数积分 ⇄ $Gamma$ 比例。

    #heading[四、例题：用伽马函数求积分（含详细步骤）]

    目标：设
    $f(x) = (4x^2)/(a^3 sqrt(pi)) e^(-x^2/a^2)$ 当 $x>0$，且 $f(x)=0$ 当 $x ≤ 0$。
    计算 $I = integral_(-∞)^(+∞) x^2 f(x) thin d x$。

    == 第一步：改写积分

    因 $f(x)=0$（$x\le 0$），故
    $I = integral_0^(+∞) x^2 ( (4x^2)/(a^3 sqrt(pi)) e^(-x^2/a^2) ) thin d x
      = (4)/(a^3 sqrt(pi)) integral_0^(+∞) x^4 e^(-x^2/a^2) thin d x$。

    == 第二步：关键代换以“凑”标准型

    令 $t = x^2/a^2$（$x = a sqrt(t)$），则 $thin d x = (a)/(2 sqrt(t)) thin d t$，且 $x^4 = a^4 t^2$。

    代回得
    $integral_0^(+∞) x^4 e^(-x^2/a^2) thin d x
      = integral_0^(+∞) a^4 t^2 e^(-t) (a/(2 sqrt(t))) thin d t
      = (a^5)/(2) integral_0^(+∞) t^(3/2) e^(-t) thin d t$。

    == 第三步：识别伽马函数

    与定义 $Gamma(z) = integral_0^(∞) t^(z-1) e^(-t) thin d t$ 对比，取
    $z - 1 = 3/2 ⇒ z = 5/2$，故
    $integral_0^(+∞) t^(3/2) e^(-t) thin d t = Gamma(5/2)$。

    == 第四步：合并并计算数值

    $I = (4)/(a^3 sqrt(pi)) * (a^5)/(2) * Gamma(5/2) = (2 a^2)/(sqrt(pi)) Gamma(5/2)$。

    又由
    $Gamma(5/2) = (3/2) Gamma(3/2) = (3/2) * (1/2) Gamma(1/2) = (3/4) sqrt(pi)$，
    得
    $I = (2 a^2)/(sqrt(pi)) * (3/4) sqrt(pi) = (3/2) a^2$。

    结论：$I = (3/2) a^2$。

    #heading[五、图表与示意]

    == 作用速览（应用领域 × 典型形式）

    #table(
      columns: (auto, auto),
      align: left,
      inset: 6pt,
      stroke: 0.5pt,
    )[
      [领域], [典型形式 / 用途];
      [概率统计], [$Gamma(1/2) = sqrt(pi)$，正态分布积分；伽马分布/卡方分布的密度与矩];
      [积分计算], [$integral_0^(∞) x^(p-1) e^(-a x) thin d x = Gamma(p)/a^p$；换元“凑”Γ];
      [级数与乘积], [魏尔斯特拉斯乘积、反射公式；黎曼ζ函数与Γ的联系（了解）];
      [组合延拓], [$n! → Gamma(n+1)$ 将阶乘推广至非整数];
      [微分方程], [通过Γ与B函数求特解常见积分];
      [机器学习], [先验/后验为 Gamma/Dirichlet（共轭先验）]
    ]

    == 数值表与形状示意（x>0）

    选取若干节点的函数值，便于形成直观印象：

    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto),
      align: center,
      inset: 4pt,
      stroke: 0.5pt,
    )[
      [x], [0.5], [1], [1.5], [2], [3], [4];
      [$Gamma(x)$], [$1.772$], [$1$], [$0.886$], [$1$], [$2$], [$6$]
    ]

    - 在 $(0, +∞)$ 上：$Gamma(x)$ 在 $x ≈ 1.4616$ 附近有极小值（约 $0.8856$），随后随 $x$ 增大迅速增长。
    - 在 $x = 1, 2, 3, 4, \ldots$ 处回到 $1!, 2!, 3!, 4!$。

    === 等宽字符示意图（仅示意趋势）

    为保证可移植性，使用等宽字符近似描绘 $Gamma(x)$ 在 $x \in (0, 5]$ 的形状。

    #set text(font: ("Cascadia Code", "Consolas", "Noto Sans Mono", "SimSun"), size: 9pt)
    ```
    y
    6 |                          █
    5 |                        █
    4 |                     █
    3 |                 █
    2 |            █ ██
    1 |█      ██ █
    0 +---------------------------------> x
      0    0.5   1   1.5   2     3     4     5
         ↑最小值≈0.886  at  x≈1.462
    ```

    注：该“ASCII”图仅为趋势示意；若需高精度绘图，可后续外部生成 SVG/PNG 并插入。
]
