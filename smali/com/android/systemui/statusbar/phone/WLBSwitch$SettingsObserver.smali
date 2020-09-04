.class public Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WLBSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;Landroid/os/Handler;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    .line 205
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->onWLBModeChanged()V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$200(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    return-void
.end method
