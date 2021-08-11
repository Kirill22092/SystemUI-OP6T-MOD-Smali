.class Lcom/android/keyguard/KeyguardAssistantView$2;
.super Ljava/lang/Object;
.source "KeyguardAssistantView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAssistantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAssistantView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$500(Lcom/android/keyguard/KeyguardAssistantView;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$600(Lcom/android/keyguard/KeyguardAssistantView;)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$608(Lcom/android/keyguard/KeyguardAssistantView;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$800(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAssistantView;->access$700(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$800(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$700(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$600(Lcom/android/keyguard/KeyguardAssistantView;)I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$900(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetryTimes >= MAX_RETRY_TIMES, retryTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardAssistantView;->access$600(Lcom/android/keyguard/KeyguardAssistantView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$900(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setGoogleSmartspaceChildViewHeightInternal complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->access$602(Lcom/android/keyguard/KeyguardAssistantView;I)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$2;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$200(Lcom/android/keyguard/KeyguardAssistantView;Z)V

    return-void
.end method
