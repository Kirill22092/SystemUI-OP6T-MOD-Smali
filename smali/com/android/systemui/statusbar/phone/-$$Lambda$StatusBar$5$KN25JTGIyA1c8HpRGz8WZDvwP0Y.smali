.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$KN25JTGIyA1c8HpRGz8WZDvwP0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar$5;

.field public final synthetic f$1:Lcom/android/systemui/plugins/OverlayPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$5;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$KN25JTGIyA1c8HpRGz8WZDvwP0Y;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$KN25JTGIyA1c8HpRGz8WZDvwP0Y;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$KN25JTGIyA1c8HpRGz8WZDvwP0Y;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$KN25JTGIyA1c8HpRGz8WZDvwP0Y;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;->lambda$onPluginDisconnected$1$StatusBar$5(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
