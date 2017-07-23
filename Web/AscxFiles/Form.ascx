﻿<%@ Control Language="C#" %>
<script runat="server">

    public class ComponentVM : ViewModel
    {
        public string Name { get; set; }
        public int Age { get; set; } = 0;

        public void Save()
        {
            ClientScript.Alert("Save from Component");
        }
    }

</script>

<template>
    <div>
        <div class="toolbar">
            <button @click="Save">Save</button>
            %toolbar%
        </div>

        <table class="table">
            <caption>Form</caption>
            <tr>
                <td>Name</td>
                <td><input type="text" v-model="Name" /></td>
            </tr>
            <tr>
                <td>Age</td>
                <td><input type="number" v-model="Age" /></td>
            </tr>
            %form%
        </table>
    </div>
</template>

<style>
    .toolbar { border: 1px solid gray; padding: 5px; }
    .table { border-collapse: collapse; min-width: 450px; border: 1px solid gray; }
    .table > tr > td:first-child { width: 120px; }
    .table > tr td { border: 1px solid gray; padding: 5px; }
    .table > caption { text-align: left; padding: 5px; background-color: gray; color: white; margin-top: 20px; }
</style>