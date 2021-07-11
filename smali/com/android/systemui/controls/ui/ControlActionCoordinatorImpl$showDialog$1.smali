.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->showDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$intent:Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "cvh.context.packageManag\u2026EFAULT_ONLY\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getUiExecutor$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
