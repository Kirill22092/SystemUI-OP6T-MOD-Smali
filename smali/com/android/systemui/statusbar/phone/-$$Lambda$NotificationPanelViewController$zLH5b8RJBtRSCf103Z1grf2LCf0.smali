.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$zLH5b8RJBtRSCf103Z1grf2LCf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$zLH5b8RJBtRSCf103Z1grf2LCf0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$zLH5b8RJBtRSCf103Z1grf2LCf0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$1$NotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
