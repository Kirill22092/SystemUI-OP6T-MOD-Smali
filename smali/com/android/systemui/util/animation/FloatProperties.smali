.class public final Lcom/android/systemui/util/animation/FloatProperties;
.super Ljava/lang/Object;
.source "FloatProperties.kt"


# static fields
.field public static final RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_X$1;

    const-string v1, "RectX"

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_X$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_Y$1;

    const-string v1, "RectY"

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_Y$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_WIDTH$1;

    const-string v1, "RectWidth"

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_WIDTH$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    const-string v1, "RectHeight"

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_HEIGHT$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method
