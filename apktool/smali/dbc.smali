.class final Ldbc;
.super Laao;
.source "SourceFile"


# instance fields
.field final synthetic p:Ldas;

.field private final q:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ldas;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Ldbc;->p:Ldas;

    .line 402
    invoke-direct {p0, p2}, Laao;-><init>(Landroid/view/View;)V

    .line 403
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tC:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldbc;->q:Landroid/widget/ImageView;

    .line 404
    return-void
.end method


# virtual methods
.method public u()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Ldbc;->p:Ldas;

    .line 1046
    iget-boolean v0, v0, Ldas;->g:Z

    .line 407
    if-eqz v0, :cond_0

    sget v0, Lfii;->f:I

    .line 409
    :goto_0
    iget-object v1, p0, Ldbc;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    return-void

    .line 408
    :cond_0
    sget v0, Lfii;->g:I

    goto :goto_0
.end method
