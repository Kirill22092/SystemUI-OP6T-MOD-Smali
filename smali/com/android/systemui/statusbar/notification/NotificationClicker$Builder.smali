.class public Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;
.super Ljava/lang/Object;
.source "NotificationClicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationClicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    return-void
.end method


# virtual methods
.method public build(Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/NotificationClicker;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;",
            ")",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationClicker$1;)V

    return-object v6
.end method
