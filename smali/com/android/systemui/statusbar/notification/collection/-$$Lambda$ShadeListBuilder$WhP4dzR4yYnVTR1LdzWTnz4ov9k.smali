.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$WhP4dzR4yYnVTR1LdzWTnz4ov9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$WhP4dzR4yYnVTR1LdzWTnz4ov9k;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    return-void
.end method


# virtual methods
.method public final onPluggableInvalidated(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$WhP4dzR4yYnVTR1LdzWTnz4ov9k;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->lambda$WhP4dzR4yYnVTR1LdzWTnz4ov9k(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    return-void
.end method
