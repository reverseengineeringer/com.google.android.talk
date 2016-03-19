.class public Lcom/google/android/apps/hangouts/phone/DebugBitmapsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Laal;->ft:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/DebugBitmapsActivity;->setContentView(I)V

    .line 37
    sget v0, Laen;->aM:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/DebugBitmapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 38
    new-instance v1, Ldfo;

    .line 1189
    invoke-direct {v1, p0}, Ldfo;-><init>(Lcom/google/android/apps/hangouts/phone/DebugBitmapsActivity;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 39
    return-void
.end method
