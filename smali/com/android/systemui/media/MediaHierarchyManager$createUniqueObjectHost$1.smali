.class public final Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;->createUniqueObjectHost()Lcom/android/systemui/util/animation/UniqueObjectHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/animation/UniqueObjectHostView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->$viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/ViewGroupOverlay;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->$viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const-string/jumbo v1, "viewHost.viewRootImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroupOverlay;

    invoke-static {p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/ViewGroupOverlay;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroupOverlay"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;->$viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
