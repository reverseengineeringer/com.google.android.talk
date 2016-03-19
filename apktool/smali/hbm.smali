.class public interface abstract Lhbm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Resource:",
        "Llyi;",
        "AddRequest:",
        "Llyi;",
        "AddResponse:",
        "Llyi;",
        "ModifyRequest:",
        "Llyi;",
        "ModifyResponse:",
        "Llyi;",
        "RemoveRequest:",
        "Llyi;",
        "RemoveResponse:",
        "Llyi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lhbn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhbn",
            "<TResource;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Llyi;Lhbp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAddRequest;",
            "Lhbp",
            "<TAddResponse;>;)V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TResource;>;"
        }
    .end annotation
.end method

.method public abstract b(Lhbn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhbn",
            "<TResource;>;)V"
        }
    .end annotation
.end method

.method public abstract b(Llyi;Lhbp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModifyRequest;",
            "Lhbp",
            "<TModifyResponse;>;)V"
        }
    .end annotation
.end method

.method public abstract c(Llyi;Lhbp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoveRequest;",
            "Lhbp",
            "<TRemoveResponse;>;)V"
        }
    .end annotation
.end method
