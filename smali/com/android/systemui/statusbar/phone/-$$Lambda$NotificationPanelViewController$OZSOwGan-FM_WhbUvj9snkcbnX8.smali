.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$OZSOwGan-FM_WhbUvj9snkcbnX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$OZSOwGan-FM_WhbUvj9snkcbnX8;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$OZSOwGan-FM_WhbUvj9snkcbnX8;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$0$NotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V

    return-void
.end method
