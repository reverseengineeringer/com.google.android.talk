.class final Lcoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field final synthetic a:Lcod;


# direct methods
.method constructor <init>(Lcod;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcoe;->a:Lcod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcoe;->a:Lcod;

    .line 1018
    iget v1, v0, Lcod;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcod;->a:I

    .line 56
    return-void
.end method

.method public a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcoe;->a:Lcod;

    .line 2018
    iget v1, v0, Lcod;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcod;->a:I

    .line 61
    return-void
.end method
