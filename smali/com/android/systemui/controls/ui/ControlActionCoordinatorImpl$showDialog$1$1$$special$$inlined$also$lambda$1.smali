.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$$special$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$$special$$inlined$also$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$$special$$inlined$also$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$setDialog$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/Dialog;)V

    return-void
.end method
