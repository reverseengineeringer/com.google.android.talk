.class final Ldbe;
.super Laao;
.source "SourceFile"


# instance fields
.field p:Landroid/widget/TextView;

.field final synthetic q:Ldas;


# direct methods
.method constructor <init>(Ldas;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Ldbe;->q:Ldas;

    .line 374
    invoke-direct {p0, p2}, Laao;-><init>(Landroid/view/View;)V

    .line 375
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tU:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbe;->p:Landroid/widget/TextView;

    .line 376
    return-void
.end method
