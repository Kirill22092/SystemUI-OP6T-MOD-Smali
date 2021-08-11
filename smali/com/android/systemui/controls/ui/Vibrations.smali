.class public final Lcom/android/systemui/controls/ui/Vibrations;
.super Ljava/lang/Object;
.source "Vibrations.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/Vibrations;

.field private static final rangeEdgeEffect:Landroid/os/VibrationEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final rangeMiddleEffect:Landroid/os/VibrationEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/Vibrations;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/Vibrations;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/Vibrations;->INSTANCE:Lcom/android/systemui/controls/ui/Vibrations;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/Vibrations;->initRangeEdgeEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/controls/ui/Vibrations;->rangeEdgeEffect:Landroid/os/VibrationEffect;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/Vibrations;->initRangeMiddleEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/Vibrations;->rangeMiddleEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initRangeEdgeEffect()Landroid/os/VibrationEffect;
    .locals 2

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/4 v0, 0x7

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    const-string v0, "composition.compose()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final initRangeMiddleEffect()Landroid/os/VibrationEffect;
    .locals 2

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/4 v0, 0x7

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    const-string v0, "composition.compose()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getRangeEdgeEffect()Landroid/os/VibrationEffect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/android/systemui/controls/ui/Vibrations;->rangeEdgeEffect:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public final getRangeMiddleEffect()Landroid/os/VibrationEffect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/android/systemui/controls/ui/Vibrations;->rangeMiddleEffect:Landroid/os/VibrationEffect;

    return-object p0
.end method
