.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlActionCoordinatorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlActionCoordinatorImpl.kt\ncom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1\n*L\n1#1,187:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $activities:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->$activities:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->$activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    new-instance v1, Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$intent:Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V

    new-instance v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$$special$$inlined$also$lambda$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$$special$$inlined$also$lambda$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/DetailDialog;->show()V

    invoke-static {v0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$setDialog$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/Dialog;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    :goto_0
    return-void
.end method
