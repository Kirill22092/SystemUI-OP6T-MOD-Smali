.class public final Lcom/android/systemui/controls/ui/RenderInfo$Companion;
.super Ljava/lang/Object;
.source "RenderInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/RenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;-><init>()V

    return-void
.end method

.method public static synthetic lookup$default(Lcom/android/systemui/controls/ui/RenderInfo$Companion;Landroid/content/Context;Landroid/content/ComponentName;IIILjava/lang/Object;)Lcom/android/systemui/controls/ui/RenderInfo;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearCache()V
    .locals 0

    .line 78
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getIconMap$cp()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 79
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getAppIconMap$cp()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "componentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p4, :cond_0

    mul-int/lit16 p3, p3, 0x3e8

    add-int/2addr p3, p4

    .line 53
    :cond_0
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfoKt;->access$getDeviceColorMap$p()Ljava/util/Map;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p0, p4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 54
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfoKt;->access$getDeviceIconMap$p()Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 57
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getAppIconMap$cp()Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 60
    sget v0, Lcom/android/systemui/R$drawable;->ic_device_unknown_on:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 61
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getAppIconMap$cp()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getIconMap$cp()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 67
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getIconMap$cp()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    move-object p3, p2

    .line 70
    :cond_3
    :goto_0
    new-instance p2, Lcom/android/systemui/controls/ui/RenderInfo;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p3, "icon!!.constantState.new\u2026awable(context.resources)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p4, p0}, Lcom/android/systemui/controls/ui/RenderInfo;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final registerComponentIcon(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "icon"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/android/systemui/controls/ui/RenderInfo;->access$getAppIconMap$cp()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
