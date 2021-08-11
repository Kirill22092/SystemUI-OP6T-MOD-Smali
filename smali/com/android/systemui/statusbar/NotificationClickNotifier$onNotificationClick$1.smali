.class final Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;
.super Ljava/lang/Object;
.source "NotificationClickNotifier.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;->$key:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->access$notifyListenersAboutInteraction(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V

    return-void
.end method
