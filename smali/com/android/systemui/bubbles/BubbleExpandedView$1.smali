.class Lcom/android/systemui/bubbles/BubbleExpandedView$1;
.super Landroid/app/ActivityView$StateCallback;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/app/ActivityView$StateCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onActivityViewReady$0(Landroid/app/ActivityOptions;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$600(Lcom/android/systemui/bubbles/BubbleExpandedView;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void

    .line 176
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$700(Lcom/android/systemui/bubbles/BubbleExpandedView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    .line 177
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setApplyActivityFlagsForBubbles(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/app/ActivityView;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x80000

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 185
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->setIntentActive()V

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$800(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/ActivityView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while displaying bubble: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$600(Lcom/android/systemui/bubbles/BubbleExpandedView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; removing bubble"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bubbles"

    .line 195
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$600(Lcom/android/systemui/bubbles/BubbleExpandedView;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityViewReady$1()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$100(Lcom/android/systemui/bubbles/BubbleExpandedView;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void
.end method

.method private synthetic lambda$onTaskRemovalStarted$2()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityViewReady$0$BubbleExpandedView$1(Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->lambda$onActivityViewReady$0(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public synthetic lambda$onActivityViewReady$1$BubbleExpandedView$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->lambda$onActivityViewReady$1()V

    return-void
.end method

.method public synthetic lambda$onTaskRemovalStarted$2$BubbleExpandedView$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->lambda$onTaskRemovalStarted$2()V

    return-void
.end method

.method public onActivityViewDestroyed(Landroid/app/ActivityView;)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->RELEASED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-void
.end method

.method public onActivityViewReady(Landroid/app/ActivityView;)V
    .locals 2

    .line 156
    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$4;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$3ncDnIQQCskyrWWDiIMVoTXxvGg;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$3ncDnIQQCskyrWWDiIMVoTXxvGg;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    const/4 v0, 0x6

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    :goto_0
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$102(Lcom/android/systemui/bubbles/BubbleExpandedView;I)I

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$8DxRCXjWXD-jbCBbQO_LWChzL0s;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$8DxRCXjWXD-jbCBbQO_LWChzL0s;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
