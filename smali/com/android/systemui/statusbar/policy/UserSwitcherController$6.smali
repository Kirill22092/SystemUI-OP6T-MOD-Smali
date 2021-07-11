.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;
.super Landroid/database/ContentObserver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 615
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 616
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 618
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 p1, -0x2710

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    return-void
.end method
