.class public Lcom/oneplus/plugin/OpRippleView;
.super Landroid/view/View;
.source "OpRippleView.java"


# static fields
.field public static MESSAGE_DELAY:I


# instance fields
.field private COLOR:I

.field private DURATION:F

.field private END_RADIUS_FISRT:F

.field private END_RADIUS_SECOND:F

.field private START_RADIUS_FIRST:F

.field private START_RADIUS_SECOND:F

.field private STROKE_WIDTH_FIRST:I

.field private STROKE_WIDTH_SECOUND:I

.field private handler:Landroid/os/Handler;

.field private isStartRipple:Z

.field private mClickCount:I

.field private mOffsetFirst:F

.field private mOffsetSecond:F

.field private mPositionX:I

.field private mPositionY:I

.field private mRipplePaintFirst:Landroid/graphics/Paint;

.field private mRipplePaintSecond:Landroid/graphics/Paint;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private rippleFirstRadius:I

.field private rippleSecendRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ripple.sys.value"

    const/16 v1, 0x14

    .line 23
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 v0, 0x41f00000    # 30.0f

    .line 28
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    const/high16 v0, 0x42f00000    # 120.0f

    .line 29
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 30
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    const/high16 v0, 0x43160000    # 150.0f

    .line 31
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 32
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    const-string v0, "#888888"

    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v1, -0x5

    .line 48
    iput v1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    .line 49
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    .line 51
    new-instance v0, Lcom/oneplus/plugin/OpRippleView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/plugin/OpRippleView$1;-><init>(Lcom/oneplus/plugin/OpRippleView;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 p2, 0x41f00000    # 30.0f

    .line 28
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    const/high16 p2, 0x42f00000    # 120.0f

    .line 29
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 30
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    const/high16 p2, 0x43160000    # 150.0f

    .line 31
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 32
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    const-string p2, "#888888"

    .line 33
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    const/4 p2, 0x4

    .line 34
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    const/4 p2, 0x2

    .line 35
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v0, -0x5

    .line 48
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    .line 49
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    .line 51
    new-instance p2, Lcom/oneplus/plugin/OpRippleView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/plugin/OpRippleView$1;-><init>(Lcom/oneplus/plugin/OpRippleView;)V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    .line 96
    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 p2, 0x41f00000    # 30.0f

    .line 28
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    const/high16 p2, 0x42f00000    # 120.0f

    .line 29
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 30
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    const/high16 p2, 0x43160000    # 150.0f

    .line 31
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 32
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    const-string p2, "#888888"

    .line 33
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    const/4 p2, 0x4

    .line 34
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    const/4 p2, 0x2

    .line 35
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 p3, -0x5

    .line 48
    iput p3, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    .line 49
    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    .line 51
    new-instance p2, Lcom/oneplus/plugin/OpRippleView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/plugin/OpRippleView$1;-><init>(Lcom/oneplus/plugin/OpRippleView;)V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/plugin/OpRippleView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/plugin/OpRippleView;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    return p1
.end method

.method static synthetic access$108(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/plugin/OpRippleView;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    return p1
.end method

.method static synthetic access$208(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/plugin/OpRippleView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v0, "window"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 117
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    .line 119
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public generatePosition()V
    .locals 9

    .line 192
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 193
    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    .line 195
    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    .line 198
    iget v4, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v5, 0x2

    if-nez v4, :cond_0

    .line 199
    div-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v4, v2

    .line 201
    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    float-to-int v2, v2

    sub-int v5, v1, v4

    .line 203
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v5, v3, v2

    .line 204
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    int-to-float v4, v1

    sub-float/2addr v4, v2

    float-to-int v4, v4

    .line 207
    div-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 208
    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    float-to-int v2, v2

    sub-int v6, v4, v1

    .line 210
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    int-to-float v5, v6

    iget v6, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v5, v3, v2

    .line 211
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    :goto_0
    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    int-to-float v4, v1

    sub-float/2addr v4, v2

    float-to-int v4, v4

    .line 214
    div-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v6, v3

    sub-float/2addr v6, v2

    float-to-int v6, v6

    .line 216
    div-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, v4, v1

    .line 217
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    div-int/2addr v7, v5

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v3, v6, v2

    .line 218
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    div-int/2addr v3, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    move v3, v6

    goto :goto_0

    .line 220
    :cond_2
    div-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v4, v2

    int-to-float v6, v3

    sub-float/2addr v6, v2

    float-to-int v6, v6

    .line 223
    div-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, v1, v4

    .line 224
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v3, v6, v2

    .line 225
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    div-int/2addr v3, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    move v3, v6

    .line 227
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generatePosition : click = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " < x < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < y < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpRippleView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generatePosition: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isValidPosition(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidPosition: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpRippleView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    int-to-float v4, v2

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    int-to-float v2, v2

    sub-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    int-to-float v0, p0

    add-float/2addr v0, v5

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    int-to-float p0, p0

    sub-float/2addr p0, v5

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const-string p0, "isValidPosition: true"

    .line 240
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    if-eqz v0, :cond_1

    .line 127
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    const-wide v1, 0x406fe00000000000L    # 255.0

    const-wide v3, 0x400921ff2e48e8a7L    # 3.1416

    if-ltz v0, :cond_0

    .line 128
    sget v5, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    int-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    .line 129
    iget-object v5, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetFirst:F

    iget v8, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    :cond_0
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    if-ltz v0, :cond_1

    .line 134
    sget v5, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    float-to-double v3, v3

    div-double/2addr v5, v3

    int-to-double v3, v0

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    .line 135
    iget-object v1, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetSecond:F

    iget v4, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 177
    invoke-virtual {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->isValidPosition(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: isValid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpRippleView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 180
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 183
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->stopRipple()V

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->startRipple()V

    .line 188
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepare()V
    .locals 4

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    .line 166
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->generatePosition()V

    .line 167
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    sub-float/2addr v0, v1

    sget v2, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-float v3, v2

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetFirst:F

    .line 168
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    sub-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetSecond:F

    .line 169
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public startRipple()V
    .locals 1

    .line 145
    sget v0, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->generatePosition()V

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/oneplus/plugin/OpRippleView;->startRipple(I)V

    return-void
.end method

.method public startRipple(I)V
    .locals 2

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    .line 156
    iget-object p0, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopRipple()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    .line 161
    iget-object p0, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
