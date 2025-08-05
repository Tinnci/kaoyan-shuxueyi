#import "math-formula-template.typ": 数学公式背诵模板

#数学公式背诵模板(
    title: "微积分常用三角函数公式大全",
)[
    #heading[一、基本定义与关系]
    
    假设有一个直角三角形，角 $theta$ 的对边为 $a$，邻边为 $b$，斜边为 $c$。
    
    == 六大基本函数定义
    
    - 正弦 (Sine): $sin theta = a/c$
    - 余弦 (Cosine): $cos theta = b/c$
    - 正切 (Tangent): $tan theta = a/b$
    - 余割 (Cosecant): $csc theta = c/a$
    - 正割 (Secant): $sec theta = c/b$
    - 余切 (Cotangent): $cot theta = b/a$
    
    == 倒数关系
    
    - $sin x = 1/(csc x)$
    - $cos x = 1/(sec x)$
    - $tan x = 1/(cot x)$
    
    == 商数关系
    
    - $tan x = (sin x)/(cos x)$
    - $cot x = (cos x)/(sin x)$
    
    #heading[二、核心恒等式]
    
    == 平方关系 (Pythagorean Identities)
    
    - 最核心的公式：$sin^2 x + cos^2 x = 1$
    - $tan^2 x + 1 = sec^2 x$ （常用于含 $tan$ 和 $sec$ 的积分）
    - $1 + cot^2 x = csc^2 x$
    
    == 和差角公式
    
    - $sin(A plus.minus B) = sin A cos B plus.minus cos A sin B$
    - $cos(A plus.minus B) = cos A cos B minus.plus sin A sin B$
    - $tan(A plus.minus B) = (tan A plus.minus tan B)/(1 minus.plus tan A tan B)$
    
    == 倍角公式
    
    - $sin(2x) = 2 sin x cos x$
    - $cos(2x) = cos^2 x - sin^2 x = 2cos^2 x - 1 = 1 - 2sin^2 x$
    - $tan(2x) = (2tan x)/(1 - tan^2 x)$
    
    == 降幂公式（积分中极其重要）
    
    - $sin^2 x = (1 - cos(2x))/2$
    - $cos^2 x = (1 + cos(2x))/2$
    - $tan^2 x = (1 - cos(2x))/(1 + cos(2x))$
    
    #heading[三、微积分相关公式]
    
    == 三角函数导数
    
    - $(sin x)' = cos x$
    - $(cos x)' = -sin x$
    - $(tan x)' = sec^2 x$
    - $(cot x)' = -csc^2 x$
    - $(sec x)' = sec x tan x$
    - $(csc x)' = -csc x cot x$
    
    == 反三角函数导数
    
    - $(arcsin x)' = 1/sqrt(1-x^2)$
    - $(arccos x)' = -1/sqrt(1-x^2)$
    - $(arctan x)' = 1/(1+x^2)$
    - $(op("arccot") x)' = -1/(1+x^2)$
    
    == 基本积分公式
    
    - $integral cos x thin d x = sin x + C$
    - $integral sin x thin d x = -cos x + C$
    - $integral sec^2 x thin d x = tan x + C$
    - $integral csc^2 x thin d x = -cot x + C$
    - $integral sec x tan x thin d x = sec x + C$
    - $integral csc x cot x thin d x = -csc x + C$
    
    == 特殊积分公式（重点记忆）
    
    - $integral tan x thin d x = ln|sec x| + C = -ln|cos x| + C$
    - $integral cot x thin d x = ln|sin x| + C$
    - $integral sec x thin d x = ln|sec x + tan x| + C$
    - $integral csc x thin d x = ln|csc x - cot x| + C$
    
    == 指数与三角函数的积分
    
    - $integral e^(a x) sin(b x) thin d x = (e^(a x))/(a^2+b^2)(a sin(b x) - b cos(b x)) + C$
    - $integral e^(a x) cos(b x) thin d x = (e^(a x))/(a^2+b^2)(a cos(b x) + b sin(b x)) + C$
]
