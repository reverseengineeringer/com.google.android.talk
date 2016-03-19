.class final Leiy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lejc;

.field final synthetic b:Lejb;

.field final synthetic c:Leit;


# direct methods
.method constructor <init>(Leit;Lejc;Lejb;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Leiy;->c:Leit;

    iput-object p2, p0, Leiy;->a:Lejc;

    iput-object p3, p0, Leiy;->b:Lejb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Leiy;->a:Lejc;

    iget-object v1, p0, Leiy;->b:Lejb;

    invoke-virtual {v0, v1}, Lejc;->a(Lejb;)V

    .line 565
    iget-object v0, p0, Leiy;->b:Lejb;

    invoke-interface {v0}, Lejb;->b()V

    .line 566
    return-void
.end method
