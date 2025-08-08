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
]

