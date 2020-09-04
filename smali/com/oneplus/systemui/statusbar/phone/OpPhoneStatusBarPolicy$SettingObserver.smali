.class final Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OpPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    .line 825
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 830
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 831
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$800(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    return-void
.end method
