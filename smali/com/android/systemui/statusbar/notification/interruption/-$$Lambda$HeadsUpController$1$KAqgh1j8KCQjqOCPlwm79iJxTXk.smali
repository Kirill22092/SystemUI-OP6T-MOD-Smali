.class public final synthetic Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;->f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    return-void
.end method


# virtual methods
.method public final onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;->f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->lambda$onEntryAdded$0(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
