.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$SBKxeejWdiPVIq--MxMI8pU8ipA(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method
