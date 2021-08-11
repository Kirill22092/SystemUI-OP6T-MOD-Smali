.class public final Lcom/android/systemui/media/MediaViewController$stateCallback$1;
.super Ljava/lang/Object;
.source "MediaViewController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostStatesManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V
    .locals 2
    .param p2    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mediaHostState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {p2}, Lcom/android/systemui/media/MediaViewController;->access$getCurrentEndLocation$p(Lcom/android/systemui/media/MediaViewController;)I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {p2}, Lcom/android/systemui/media/MediaViewController;->access$getCurrentStartLocation$p(Lcom/android/systemui/media/MediaViewController;)I

    move-result p2

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {p1}, Lcom/android/systemui/media/MediaViewController;->access$getCurrentStartLocation$p(Lcom/android/systemui/media/MediaViewController;)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaViewController;->access$getCurrentEndLocation$p(Lcom/android/systemui/media/MediaViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaViewController;->access$getCurrentTransitionProgress$p(Lcom/android/systemui/media/MediaViewController;)F

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    :cond_1
    return-void
.end method
