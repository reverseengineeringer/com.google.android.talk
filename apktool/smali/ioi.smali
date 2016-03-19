.class final Lioi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Liog;


# direct methods
.method constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lioi;->a:Liog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 1

    .prologue
    .line 205
    instance-of v0, p1, Liox;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Liox;

    invoke-interface {p1}, Liox;->s_()V

    .line 208
    :cond_0
    return-void
.end method
