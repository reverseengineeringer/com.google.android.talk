.class final Leiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lejc;

.field final synthetic b:Leit;


# direct methods
.method constructor <init>(Leit;Lejc;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Leiz;->b:Leit;

    iput-object p2, p0, Leiz;->a:Lejc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Leiz;->a:Lejc;

    invoke-virtual {v0}, Lejc;->g()V

    .line 641
    return-void
.end method
