.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showEnableDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$enabling:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->val$checkBox:Landroid/widget/CheckBox;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->val$enabling:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 225
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const-string v0, "airplanechecked"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;->val$enabling:Z

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    return-void
.end method
