.class final Lioc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Linz;


# direct methods
.method constructor <init>(Linz;Z)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lioc;->b:Linz;

    iput-boolean p2, p0, Lioc;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lioc;->a:Z

    .line 1019
    invoke-static {p1, v0}, Linz;->a(Lioz;Z)V

    .line 63
    return-void
.end method
