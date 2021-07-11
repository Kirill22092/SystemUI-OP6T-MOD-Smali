.class Lcom/android/systemui/recents/RecentsOnboarding$3;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1500(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1702(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$402(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$902(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1500(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1702(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->recents_quick_scrub_onboarding:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$902(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 272
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1800(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1400(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1900(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    .line 279
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1002(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
