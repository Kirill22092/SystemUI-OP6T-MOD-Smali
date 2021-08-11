.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/AutoHideUiElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    return-void
.end method

.method public isHideNavBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result p0

    return p0
.end method

.method public refreshLayout(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;I)V

    return-void
.end method

.method public shouldHideOnTouch()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synchronizeState()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    return-void
.end method
