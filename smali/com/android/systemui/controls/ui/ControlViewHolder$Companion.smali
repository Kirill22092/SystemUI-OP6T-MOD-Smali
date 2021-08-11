.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lkotlin/reflect/KClass;
    .locals 2
    .param p2    # Landroid/service/controls/templates/ControlTemplate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/service/controls/templates/ControlTemplate;",
            "I)",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/android/systemui/controls/ui/Behavior;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    const-class v0, Lcom/android/systemui/controls/ui/TouchBehavior;

    const-string/jumbo v1, "template"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-class p0, Lcom/android/systemui/controls/ui/StatusBehavior;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    if-ne p3, p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of p1, p2, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p1, :cond_3

    const-class p0, Lcom/android/systemui/controls/ui/ToggleBehavior;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p1, p2, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of p1, p2, Landroid/service/controls/templates/ToggleRangeTemplate;

    if-eqz p1, :cond_5

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of p1, p2, Landroid/service/controls/templates/RangeTemplate;

    if-eqz p1, :cond_6

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of p0, p2, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz p0, :cond_7

    const-class p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_7
    const-class p0, Lcom/android/systemui/controls/ui/DefaultBehavior;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    :goto_0
    return-object p0
.end method
