.class final Lhka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhjz;


# direct methods
.method constructor <init>(Lhjz;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lhka;->a:Lhjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lhka;->a:Lhjz;

    .line 1042
    invoke-virtual {v0}, Lhjz;->j()V

    .line 137
    return-void
.end method
