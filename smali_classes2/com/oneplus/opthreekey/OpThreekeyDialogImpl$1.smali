.class Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;
.super Ljava/lang/Object;
.source "OpThreekeyDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakefulnessLifecycle, onFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$102(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;Z)Z

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakefulnessLifecycle, onFinishedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$102(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;Z)Z

    .line 122
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-static {v0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$200(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$202(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;Z)Z

    .line 124
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-virtual {p0, v1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->show(I)V

    :cond_0
    return-void
.end method
