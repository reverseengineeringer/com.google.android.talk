.class public final Lcte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lawn;


# direct methods
.method public constructor <init>(Lawn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcte;->c:Lawn;

    iput-object p2, p0, Lcte;->a:Ljava/lang/String;

    iput-object p3, p0, Lcte;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcte;->c:Lawn;

    iget-object v0, v0, Lawn;->a:Lctd;

    .line 1063
    iget-object v0, v0, Lctd;->c:Liad;

    .line 109
    iget-object v1, p0, Lcte;->a:Ljava/lang/String;

    iget-object v2, p0, Lcte;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Liad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
