.class public Lcom/oneplus/keyguard/OpPasswordTextViewForPin;
.super Landroid/view/View;
.source "OpPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;,
        Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;,
        Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;
    }
.end annotation


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawAlphaPaint1:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint2:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint3:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint4:Landroid/graphics/Paint;

.field private final mDrawEmptyCirclePaint:Landroid/graphics/Paint;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private mOnTextChangeListerner:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;

.field private mPM:Landroid/os/PowerManager;

.field private mPinPasswordLength:I

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:I

.field private final mTextHeightRaw:I

.field private mUserActivityListener:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    const-string p3, ""

    .line 95
    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 96
    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 100
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 109
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 110
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 111
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 112
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 113
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 114
    iput p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextColor:I

    const/4 p4, 0x0

    .line 117
    iput p4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mPinPasswordLength:I

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 143
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 144
    sget-object v1, Lcom/android/systemui/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 146
    :try_start_0
    sget v1, Lcom/android/systemui/R$styleable;->PasswordTextView_scaledTextSize:I

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextHeightRaw:I

    .line 147
    sget v1, Lcom/android/systemui/R$styleable;->PasswordTextView_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mGravity:I

    .line 148
    sget v1, Lcom/android/systemui/R$styleable;->PasswordTextView_dotSize:I

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->password_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 148
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDotSize:I

    .line 150
    sget v1, Lcom/android/systemui/R$styleable;->PasswordTextView_charPadding:I

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->password_char_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 150
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPadding:I

    .line 153
    sget v1, Lcom/android/systemui/R$styleable;->PasswordTextView_android_textColor:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 155
    iput p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextColor:I

    .line 157
    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iget-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 162
    iget-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "show_password"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_0

    move p4, v0

    :cond_0
    iput-boolean p4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mShowPassword:Z

    .line 169
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p3, 0x10c000e

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 171
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p3, 0x10c000f

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 173
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p3, 0x10c000d

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 175
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 178
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p1

    iput p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mPinPasswordLength:I

    return-void

    :catchall_0
    move-exception p0

    .line 159
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mUserActivityListener:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDotSize:I

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPadding:I

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Ljava/util/Stack;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mShowPassword:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 4

    .line 250
    iget v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextHeightRaw:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    .line 251
    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 253
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 260
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 261
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 263
    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    if-eqz v1, :cond_0

    int-to-float v3, v3

    .line 265
    iget v5, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPadding:I

    int-to-float v5, v5

    iget v6, v4, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    :cond_0
    int-to-float v3, v3

    int-to-float v5, v2

    .line 267
    iget v4, v4, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, v3

    return p0
.end method

.method private obtainCharState(C)Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    .line 364
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->reset()V

    .line 366
    :goto_0
    iput-char p1, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->whichChar:C

    return-object v0
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 3

    .line 472
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "speak_password"

    const/4 v2, -0x3

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private userActivity()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 330
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mUserActivityListener:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;

    if-eqz p0, :cond_0

    .line 331
    invoke-interface {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;->onUserActivity()V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->obtainCharState(C)Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    .line 285
    iput-char p1, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->whichChar:C

    move-object p1, v0

    .line 287
    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startAppearAnimation()V

    const/4 p1, 0x1

    if-le v2, p1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    .line 292
    iget-boolean v3, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    if-eqz v3, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->swapToDotWhenAppearFinished()V

    .line 300
    :cond_1
    iget v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mPinPasswordLength:I

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v2, v0, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    if-eqz v0, :cond_4

    .line 307
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;

    invoke-direct {v2, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mOnTextChangeListerner:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;

    if-eqz v0, :cond_5

    .line 316
    iget-object v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 320
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->userActivity()V

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    return-void
.end method

.method public deleteLastChar()V
    .locals 6

    .line 336
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v3

    .line 339
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 340
    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    const-wide/16 v4, 0x0

    .line 341
    invoke-virtual {v0, v4, v5, v4, v5}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mOnTextChangeListerner:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;

    if-eqz v0, :cond_1

    .line 346
    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->userActivity()V

    .line 351
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 229
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->getDrawingWidth()F

    move-result v0

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 231
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 232
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 233
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 235
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/4 v5, 0x0

    move v11, v1

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_0

    .line 237
    iget-object v5, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    move-object v6, p1

    move v7, v11

    move v8, v3

    move v9, v4

    move v10, v2

    .line 238
    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v5

    add-float/2addr v11, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 431
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 433
    const-class p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 435
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 452
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 454
    const-class v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 458
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    const/16 p0, 0x10

    .line 464
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 440
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 442
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 444
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 371
    iget-object v1, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    const-string v2, ""

    .line 372
    iput-object v2, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 373
    iget-object v2, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 374
    div-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    .line 377
    iget-object v7, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    if-eqz p1, :cond_1

    if-gt v6, v4, :cond_0

    mul-int/lit8 v8, v6, 0x2

    goto :goto_1

    :cond_0
    sub-int v8, v6, v4

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v3, v8

    :goto_1
    int-to-long v8, v8

    const-wide/16 v10, 0x28

    mul-long/2addr v8, v10

    const-wide/16 v12, 0xc8

    .line 387
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    int-to-long v14, v3

    mul-long/2addr v10, v14

    .line 389
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0xa0

    add-long/2addr v10, v12

    .line 390
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 391
    invoke-static {v7}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->access$200(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    goto :goto_2

    .line 393
    :cond_1
    iget-object v8, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 397
    iget-object v2, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 401
    :cond_3
    iget-object v2, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mOnTextChangeListerner:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;

    if-eqz v2, :cond_4

    .line 402
    iget-object v3, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    :cond_5
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 1

    .line 413
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/16 v0, 0x10

    .line 419
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 421
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 422
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 424
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 425
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method

.method public setTextChangeListener(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mOnTextChangeListerner:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;

    return-void
.end method

.method public setUserActivityListener(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->mUserActivityListener:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;

    return-void
.end method
