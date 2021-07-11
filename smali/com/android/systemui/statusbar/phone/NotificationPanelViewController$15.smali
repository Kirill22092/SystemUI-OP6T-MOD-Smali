.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onExpandingFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 2656
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2659
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    return-void
.end method
