.class final Lewf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Lewb;


# direct methods
.method constructor <init>(Lewb;Landroid/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lewf;->b:Lewb;

    iput-object p2, p0, Lewf;->a:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lewf;->b:Lewb;

    invoke-virtual {v0}, Lewb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lewf;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Leut;->c(Z)V

    .line 117
    iget-object v0, p0, Lewf;->b:Lewb;

    .line 1036
    invoke-virtual {v0}, Lewb;->b()V

    .line 118
    const/4 v0, 0x1

    return v0
.end method
