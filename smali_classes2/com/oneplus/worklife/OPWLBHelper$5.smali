.class Lcom/oneplus/worklife/OPWLBHelper$5;
.super Ljava/lang/Object;
.source "OPWLBHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/worklife/OPWLBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/worklife/OPWLBHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$5;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    const-string v0, "OPSystemUIWLBHelper"

    const-string v1, "inside onNotificationAdded"

    .line 479
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$5;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$5;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$800(Lcom/oneplus/worklife/OPWLBHelper;)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$900(Lcom/oneplus/worklife/OPWLBHelper;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
