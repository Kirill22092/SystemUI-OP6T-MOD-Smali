.class public final Lcom/android/systemui/controls/management/AppAdapter$callback$1;
.super Ljava/lang/Object;
.source "AppAdapter.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/AppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/FavoritesRenderer;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $backgroundExecutor:Ljava/util/concurrent/Executor;

.field final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/android/systemui/controls/management/AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/AppAdapter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/AppAdapter;

    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->$backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesUpdated(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serviceInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1;->$backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1;-><init>(Lcom/android/systemui/controls/management/AppAdapter$callback$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
