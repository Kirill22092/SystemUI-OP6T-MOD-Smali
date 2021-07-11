.class public Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
.super Landroidx/preference/PreferenceFragment;
.source "TunerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubSettingsFragment"
.end annotation


# instance fields
.field private mParentScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceFragment;

    .line 134
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    .line 136
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 140
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 141
    iget-object p2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 143
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 149
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 151
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 152
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 155
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
