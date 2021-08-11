.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$callback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/systemui/controls/controller/SeedResponse;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "componentName.packageName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$remaining:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$callback:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$startSeeding(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;Z)V

    return-void
.end method
