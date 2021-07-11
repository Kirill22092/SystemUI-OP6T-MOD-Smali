.class Lcom/android/keyguard/KeyguardDisplayManager$1;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDisplayManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000(Lcom/android/keyguard/KeyguardDisplayManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/keyguard/KeyguardDisplayManager;->access$200(Lcom/android/keyguard/KeyguardDisplayManager;IZ)V

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$300(Lcom/android/keyguard/KeyguardDisplayManager;Landroid/view/Display;)Z

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$400(Lcom/android/keyguard/KeyguardDisplayManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Presentation;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$500(Lcom/android/keyguard/KeyguardDisplayManager;I)V

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000(Lcom/android/keyguard/KeyguardDisplayManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$300(Lcom/android/keyguard/KeyguardDisplayManager;Landroid/view/Display;)Z

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$500(Lcom/android/keyguard/KeyguardDisplayManager;I)V

    return-void
.end method
