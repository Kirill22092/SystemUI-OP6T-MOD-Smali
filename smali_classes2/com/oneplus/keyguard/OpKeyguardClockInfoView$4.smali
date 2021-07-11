.class Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "OpKeyguardClockInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpKeyguardClockInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$702(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;I)I

    .line 170
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$800(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$900(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_allow_private_notifications"

    .line 174
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$800(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 173
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v5}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$900(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/database/ContentObserver;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$302(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)Z

    .line 177
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move v3, v1

    :cond_0
    invoke-static {p1, v3}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$002(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)Z

    .line 179
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUserSwitched type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$400(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsFormat12Hour:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$300(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mAllowShowSensitiveData:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    .line 181
    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$000(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardClockInfoView"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$200(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Lcom/android/keyguard/KeyguardAssistantView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$200(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Lcom/android/keyguard/KeyguardAssistantView;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$000(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardAssistantView;->setHideSensitiveData(Z)V

    .line 188
    :cond_2
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$500(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    return-void
.end method
