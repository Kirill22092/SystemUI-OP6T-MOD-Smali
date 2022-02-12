.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$-fpihsFIMWT2bHO2WtzOkRXwqkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$-fpihsFIMWT2bHO2WtzOkRXwqkE;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$-fpihsFIMWT2bHO2WtzOkRXwqkE;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->lambda$onDeviceAttributesChanged$0$BluetoothControllerImpl()V

    return-void
.end method
