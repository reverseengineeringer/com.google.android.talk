.class final Lcph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcpc;

.field final synthetic b:Lcpg;


# direct methods
.method constructor <init>(Lcpg;Lcpc;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcph;->b:Lcpg;

    iput-object p2, p0, Lcph;->a:Lcpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcph;->a:Lcpc;

    const-string v1, "dismiss_low_affinity"

    invoke-interface {v0, v1}, Lcpc;->b(Ljava/lang/String;)V

    .line 73
    return-void
.end method
