.class public final Lcom/android/systemui/media/MediaHost;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHost.kt\ncom/android/systemui/media/MediaHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1591#2,2:312\n*E\n*S KotlinDebug\n*F\n+ 1 MediaHost.kt\ncom/android/systemui/media/MediaHost\n*L\n142#1,2:312\n*E\n"
.end annotation


# instance fields
.field private final currentBounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/android/systemui/media/MediaHost$listener$1;

.field private location:I

.field private final mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

.field private final mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field private final notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

.field private final tmpLocationOnScreen:[I

.field private visibleChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaHierarchyManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaDataFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaHostStatesManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/NotificationMediaManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHierarchyManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHostStatesManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationMediaManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    iput-object p3, p0, Lcom/android/systemui/media/MediaHost;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iput-object p4, p0, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iput-object p5, p0, Lcom/android/systemui/media/MediaHost;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/android/systemui/media/MediaHost;->location:I

    .line 37
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 39
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Lcom/android/systemui/media/MediaHost$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHost$listener$1;-><init>(Lcom/android/systemui/media/MediaHost;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic access$getListener$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHost$listener$1;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    return-object p0
.end method

.method public static final synthetic access$getMediaDataFilter$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaDataFilter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    return-object p0
.end method

.method public static final synthetic access$getMediaHostStatesManager$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHostStatesManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    return-object p0
.end method

.method public static final synthetic access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method private final updateViewVisibility()V
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getShowsOnlyActiveMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataFilter;->hasActiveMedia()Z

    move-result v0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataFilter;->hasAnyMedia()Z

    move-result v0

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setVisible(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->onMediaHostVisibilityChanged(I)V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/4 v2, 0x0

    const-string v3, "hostView"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 141
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void

    .line 140
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lcom/android/systemui/media/MediaHostState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentBounds()Landroid/graphics/Rect;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/4 v1, 0x0

    const-string v2, "hostView"

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    iget-object v4, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    .line 48
    iget-object v4, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v4, v6

    .line 49
    iget-object v6, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 50
    iget-object v7, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    aget v5, v7, v5

    iget-object v7, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v5, v1

    if-ge v6, v0, :cond_0

    move v0, v3

    move v6, v0

    :cond_0
    if-ge v5, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v3, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    return-object p0

    .line 50
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object p0

    return-object p0
.end method

.method public getExpansion()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getExpansion()F

    move-result p0

    return p0
.end method

.method public getFalsingProtectionNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getFalsingProtectionNeeded()Z

    move-result p0

    return p0
.end method

.method public final getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "hostView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getLocation()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/media/MediaHost;->location:I

    return p0
.end method

.method public getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    return-object p0
.end method

.method public getShowsOnlyActiveMedia()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getShowsOnlyActiveMedia()Z

    move-result p0

    return p0
.end method

.method public getVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getVisible()Z

    move-result p0

    return p0
.end method

.method public final init(I)V
    .locals 4

    .line 88
    iput p1, p0, Lcom/android/systemui/media/MediaHost;->location:I

    .line 89
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHierarchyManager;->register(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/4 v1, 0x0

    const-string v2, "hostView"

    if-eqz v0, :cond_1

    .line 90
    new-instance v3, Lcom/android/systemui/media/MediaHost$init$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/MediaHost$init$1;-><init>(Lcom/android/systemui/media/MediaHost;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaHost$init$2;-><init>(Lcom/android/systemui/media/MediaHost;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;->setMeasurementManager(Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaHost$init$3;-><init>(Lcom/android/systemui/media/MediaHost;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setChangedListener(Lkotlin/jvm/functions/Function0;)V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHost;->updateViewVisibility()V

    return-void

    .line 106
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/animation/DisappearParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    return-void
.end method

.method public setFalsingProtectionNeeded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setFalsingProtectionNeeded(Z)V

    return-void
.end method

.method public final setHostView(Lcom/android/systemui/util/animation/UniqueObjectHostView;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/animation/UniqueObjectHostView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    return-void
.end method

.method public setShowsOnlyActiveMedia(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setShowsOnlyActiveMedia(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setVisible(Z)V

    return-void
.end method
