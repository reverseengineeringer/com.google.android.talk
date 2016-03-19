.class public final Lctf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lawn;


# direct methods
.method public constructor <init>(Lawn;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lctf;->a:Lawn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lctf;->a:Lawn;

    iget-object v0, v0, Lawn;->a:Lctd;

    .line 1063
    iget-object v0, v0, Lctd;->c:Liad;

    .line 122
    invoke-interface {v0}, Liad;->c()V

    .line 123
    return-void
.end method
