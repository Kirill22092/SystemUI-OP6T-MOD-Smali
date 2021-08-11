.class Lcom/android/systemui/statusbar/policy/MobileSignalController$3;
.super Ljava/lang/Object;
.source "MobileSignalController.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionReady(Lcom/android/ims/ImsManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "ImsManager: connection ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$502(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public bridge synthetic connectionReady(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->connectionReady(Lcom/android/ims/ImsManager;)V

    return-void
.end method

.method public connectionUnavailable()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "ImsManager: connection unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public getFeatureManager()Lcom/android/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->val$phoneId:I

    invoke-static {v0, p0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFeatureManager()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->getFeatureManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method
