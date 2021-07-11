.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final USER_SETTINGS_INTENT:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1

    .line 854
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.USER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    .line 901
    sget-object p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_CLOSE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-object p0
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 865
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/UserDetailView;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 866
    invoke-static {p1, p3, p2}, Lcom/android/systemui/qs/tiles/UserDetailView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;

    move-result-object p1

    .line 867
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/qs/tiles/UserDetailView;->createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;)V

    goto :goto_0

    .line 869
    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/android/systemui/qs/tiles/UserDetailView;

    .line 871
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/UserDetailView;->refreshAdapter()V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 859
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_user_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    .line 906
    sget-object p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-object p0
.end method

.method public openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    .line 896
    sget-object p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
